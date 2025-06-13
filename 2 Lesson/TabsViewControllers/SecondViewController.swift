//
//  SecondViewController.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

class SecondViewController: UIViewController {
    private lazy var safeArea: UIEdgeInsets = {
        view.safeAreaInsets
    }()
    let indention: CGFloat = 30
    let topIndention: CGFloat = 56
    
    private lazy var topView: UIView = {
        $0.backgroundColor = .firstScreenBackground
        return $0
    }(UIView())
    private lazy var personPic = PersonImageView(
        image: UIImage(named: "person1"),
        cornerRadius: 50
    )
    private lazy var personNameLabel = PersonLabel(
        text: "Estrella Steal",
        font: .systemFont(ofSize: 16, weight: .black)
    )
    private lazy var editButton = PersonButton(
        title: "Edit",
        titleColor: .white,
        font: UIFont.systemFont(ofSize: 14, weight: .regular),
        backgroundColor: .button,
        cornerRadius: 10
    )
    private lazy var changePasswordLabel = PersonLabel(
        text: "Change Password",
        font: .systemFont(ofSize: 16, weight: .regular),
        textColor: .black
    )
    private lazy var oldPasswordTextField = PersonTextField(
        placeholder: "Old Password",
        backgroundColor: .secPageTextFieldBg,
        isSecureTextEntry: true
    )
    private lazy var newPasswordTextField = PersonTextField(
        placeholder: "New Password",
        backgroundColor: .secPageTextFieldBg,
        isSecureTextEntry: true
    )
    private lazy var photosLabel = PersonLabel(
        text: "Photos",
        font: .systemFont(ofSize: 16, weight: .regular),
        textColor: .black
    )
    private lazy var stock1Pic = PersonImageView(
        image: UIImage(named: "stock1"),
    )
    private lazy var stock2Pic = PersonImageView(
        image: UIImage(named: "stock2"),
    )
    private lazy var stock3Pic = PersonImageView(
        image: UIImage(named: "stock3"),
    )
    private lazy var saveButton = PersonButton(
        title: "Save",
        titleColor: .white,
        backgroundColor: .button,
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubviews(topView, personPic, personNameLabel, editButton, changePasswordLabel, oldPasswordTextField, newPasswordTextField, photosLabel, stock1Pic, stock2Pic, stock3Pic, saveButton)
        arrangeSubViews()

       
    }
    private func arrangeSubViews() {
        self.topView.frame.origin.x = self.view.frame.minX
        self.topView.frame.origin.y = self.view.frame.minY
        self.topView.frame.size.width = self.view.frame.maxX
        self.topView.frame.size.height = 186
        
        self.personPic.frame.origin.x = safeArea.left + indention
        self.personPic.frame.origin.y = safeArea.top + topIndention
        self.personPic.frame.size.width = 100
        self.personPic.frame.size.height = 100
        
        self.personNameLabel.frame.origin.x = personPic.frame.maxX + 11
        self.personNameLabel.frame.origin.y = personPic.frame.midY - 25
        self.personNameLabel.frame.size.width = view.frame.maxX - personNameLabel.frame.minX - indention
        self.personNameLabel.frame.size.height = 19
        
        self.editButton.frame.origin.x = personPic.frame.maxX + 11
        self.editButton.frame.origin.y = personNameLabel.frame.maxY + 6
        self.editButton.frame.size.width = 147
        self.editButton.frame.size.height = 34
        
        self.changePasswordLabel.frame.origin.x = safeArea.left + indention
        self.changePasswordLabel.frame.origin.y = topView.frame.maxY + 46
        self.changePasswordLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.changePasswordLabel.frame.size.height = 19
        
        self.oldPasswordTextField.frame.origin.x = safeArea.left + indention
        self.oldPasswordTextField.frame.origin.y = changePasswordLabel.frame.maxY + 9
        self.oldPasswordTextField.frame.size.width = view.frame.maxX - 2 * indention
        self.oldPasswordTextField.frame.size.height = 52
        
        self.newPasswordTextField.frame.origin.x = safeArea.left + indention
        self.newPasswordTextField.frame.origin.y = oldPasswordTextField.frame.maxY + 14
        self.newPasswordTextField.frame.size.width = view.frame.maxX - 2 * indention
        self.newPasswordTextField.frame.size.height = 52
        
        self.photosLabel.frame.origin.x = safeArea.left + indention
        self.photosLabel.frame.origin.y = newPasswordTextField.frame.maxY + 86
        self.photosLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.photosLabel.frame.size.height = 19
        
        self.stock1Pic.frame.origin.x = safeArea.left + indention
        self.stock1Pic.frame.origin.y = photosLabel.frame.maxY + 23
        self.stock1Pic.frame.size.width = 100
        self.stock1Pic.frame.size.height = 100
        
        self.stock2Pic.frame.origin.x = self.view.frame.midX - 50
        self.stock2Pic.frame.origin.y = photosLabel.frame.maxY + 23
        self.stock2Pic.frame.size.width = 100
        self.stock2Pic.frame.size.height = 100
        
        self.stock3Pic.frame.origin.x = self.view.frame.maxX - indention - 100
        self.stock3Pic.frame.origin.y = photosLabel.frame.maxY + 23
        self.stock3Pic.frame.size.width = 100
        self.stock3Pic.frame.size.height = 100
        
        self.saveButton.frame.origin.x = safeArea.left + indention
        self.saveButton.frame.origin.y = stock1Pic.frame.maxY + 100
        self.saveButton.frame.size.width = view.frame.maxX - 2 * indention
        self.saveButton.frame.size.height = 55
    }
        
}
