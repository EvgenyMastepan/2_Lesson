//
//  ThirdViewController.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

class ThirdViewController: UIViewController {
    let indention: CGFloat = 30
    let topIndention: CGFloat = 56
    let buttonConfig = UIImage.SymbolConfiguration(pointSize: 28, weight: .thin, scale: .large)
    
    private lazy var appNameLabel = PersonLabel(
        text: "Welcome Home",
        font: .systemFont(ofSize: 30, weight: .black),
        textColor: .black
    )
    private lazy var personPic = PersonImageView(
        image: UIImage(named: "stock4"),
        cornerRadius: 40
    )
    private lazy var nameLabel = PersonLabel(
        text: "Варвара Никитична",
        font: .systemFont(ofSize: 20, weight: .bold),
    )
    private lazy var awardPic = PersonImageView(
        image: UIImage(named: "award"),
    )
    private lazy var ageLabel = PersonLabel(
        text: "125 лет",
        font: .systemFont(ofSize: 16, weight: .regular),
    )
    private lazy var abortButton = PersonButton(
        setImage: UIImage(systemName: "cross.fill", withConfiguration: buttonConfig),
        tintColor: .black,
        backgroundColor: .thirdPageBtnBg,
        cornerRadius: 33
    )
    private lazy var likeButton = PersonButton(
        setImage: UIImage(systemName: "suit.heart.fill", withConfiguration: buttonConfig),
        tintColor: .red,
        backgroundColor: .thirdPageBtnBg,
        cornerRadius: 33
    )
    private lazy var writeButton = PersonButton(
        title: "Write",
        titleColor: .white,
        font: UIFont.systemFont(ofSize: 16, weight: .regular),
        backgroundColor: .thirdPageBtnBg2,
        cornerRadius: 20
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubviews(appNameLabel, personPic, abortButton, likeButton, writeButton, nameLabel, ageLabel, awardPic)
        arrangeSubViews()
        
    }
    private func arrangeSubViews() {
        self.appNameLabel.frame.origin.x = self.view.frame.minX + indention
        self.appNameLabel.frame.origin.y = self.view.frame.minY + topIndention
        self.appNameLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.appNameLabel.frame.size.height = 63
        
        self.personPic.frame.origin.x = self.view.frame.minX + indention
        self.personPic.frame.origin.y = appNameLabel.frame.maxY + 28
        self.personPic.frame.size.width = view.frame.maxX - 2 * indention
        self.personPic.frame.size.height = view.frame.maxX - 2 * indention
        
        self.abortButton.frame.origin.x = self.view.frame.minX + indention
        self.abortButton.frame.origin.y = personPic.frame.maxY + 28
        self.abortButton.frame.size.width = 66
        self.abortButton.frame.size.height = 66
        self.abortButton.transform = CGAffineTransform(rotationAngle: .pi / 4)
        
        self.writeButton.frame.origin.x = self.view.frame.midX - 87
        self.writeButton.frame.origin.y = abortButton.frame.midY - 25
        self.writeButton.frame.size.width = 174
        self.writeButton.frame.size.height = 50
        
        self.likeButton.frame.origin.x = self.view.frame.maxX - indention - 66
        self.likeButton.frame.origin.y = personPic.frame.maxY + 28
        self.likeButton.frame.size.width = 66
        self.likeButton.frame.size.height = 66
        
        self.nameLabel.frame.origin.x = personPic.frame.minX + indention
        self.nameLabel.frame.origin.y = personPic.frame.maxY - ((personPic.frame.maxY - personPic.frame.midY) / 2)
        self.nameLabel.frame.size.height = 24
        self.nameLabel.sizeToFit()

        
        self.awardPic.frame.origin.x = nameLabel.frame.maxX
        self.awardPic.frame.origin.y = nameLabel.frame.midY - 15
        self.awardPic.frame.size.width = 30
        self.awardPic.frame.size.height = 30
        
        self.ageLabel.frame.origin.x = personPic.frame.minX + indention
        self.ageLabel.frame.origin.y = nameLabel.frame.maxY
        self.ageLabel.frame.size.width = personPic.frame.maxX - 3 * indention
        self.ageLabel.frame.size.height = 19
       
        
    }


}
