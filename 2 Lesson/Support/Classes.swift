//
//  SupportClasses.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

final class PersonImageView: UIImageView {
    init(
        image: UIImage? = nil,
        contentMode: UIView.ContentMode = .scaleToFill,
        cornerRadius: CGFloat = 0,
        clipsToBounds: Bool = true,
    ) {
        super.init(frame: .zero)
        
        self.image = image
        self.contentMode = contentMode
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class PersonLabel: UILabel {
    init(
        text: String? = nil,
        font: UIFont = .systemFont(ofSize: 14, weight: .regular),
        textColor: UIColor = .white,
        textAligment: NSTextAlignment = .left,
    ) {
        super.init(frame: .zero)
        
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAligment
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class PersonButton: UIButton {
    init(
        title: String? = nil,
        titleColor: UIColor = .white,
        font: UIFont = .systemFont(ofSize: 16, weight: .medium),
        setImage: UIImage? = nil,
        tintColor: UIColor? = nil,
        backgroundColor: UIColor = .systemBlue,
        cornerRadius: CGFloat = 20,
    ){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        self.setImage(setImage, for: .normal)
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

final class PersonTextField: UITextField {
    init(
         placeholder: String? = nil,
         textColor: UIColor = .black,
         backgroundColor: UIColor = .white,
         isSecureTextEntry: Bool = false
    ){
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.textColor = textColor
        self.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10
        self.leftViewMode = .always
        self.rightViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 24, height: 0))
        self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 24, height: 0))
        self.clearButtonMode = .whileEditing
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    }
