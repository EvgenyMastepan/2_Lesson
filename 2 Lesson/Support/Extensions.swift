//
//  Extensions.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
